package com.gym.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.google.android.material.tabs.TabLayoutMediator
import com.gym.databinding.TabLayoutDichvuBinding
import com.gym.ui.adapter.DichVuViewPagerAdapter

class DichVuFragment : Fragment() {
    private lateinit var binding: TabLayoutDichvuBinding
    val tabTitle = listOf("Gói Tập","Loại Gói Tập")
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding = TabLayoutDichvuBinding.inflate(layoutInflater)
        return binding.root
    }
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding.viewPager.adapter = DichVuViewPagerAdapter(childFragmentManager, activity!!.lifecycle)
        TabLayoutMediator(binding.tabLayout,binding.viewPager){
            tab,position -> tab.text = tabTitle[position]
        }.attach()
    }
}